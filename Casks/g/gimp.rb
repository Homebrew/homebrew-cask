cask "gimp" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"

  on_macos do
    on_catalina :or_older do
      version "2.10.38,1"
      sha256 arm:   "dc1aa78a40695f9f4580ce710960ff411eeef48af45b659b03b51e4cd6cdf4e8",
             intel: "d2d3ac20c762fe12f0dd0ec8d7c6c2f1f3a43e046ecb4ed815a49afcbaa92b92"

      livecheck do
        skip "Legacy version"
      end
    end
    on_big_sur :or_newer do
      version "3.2.4"
      sha256 arm:   "294c016dca7795999129a38b462f80fac3c13cb963e6de9d04eeb5d6e519392b",
             intel: "85214a388687718d30169d88b22794d6b0a89849bcc7aa456f4afb83c1326be8"

      livecheck do
        url "https://www.gimp.org/gimp_versions.json"
        strategy :json do |json|
          json["STABLE"]&.map do |release|
            release["macos"]&.map do |build|
              next unless build["filename"]&.match?(/#{arch}/i)
              next release["version"] unless build["revision"]

              "#{release["version"]},#{build["revision"]}"
            end
          end&.flatten
        end
      end
    end

    url "https://download.gimp.org/gimp/v#{version.major_minor}/macos/gimp-#{version.csv.first}-#{arch}#{"-#{version.csv.second}" if version.csv.second}.dmg"

    app "GIMP.app"
    command_wrapper "gimp",
                    executable: "#{appdir}/GIMP.app/Contents/MacOS/gimp"

    zap trash: [
      "~/Library/Application Support/Gimp",
      "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}.plist",
      "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}.savedState",
    ]
  end
  on_linux do
    version "3.2.4"
    sha256 arm64_linux:  "7cb6f5c2b5a693302beb3e41c987c47562ff146eed4125b19ecf414ba6dca0ab",
           x86_64_linux: "f1ce6dc671ef1c4aad87a0db9d7462e8ca9c0b5f899456337803c6ba32d0babe"

    filename = "GIMP-#{version.csv.first}-#{arch}#{"-#{version.csv.second}" if version.csv.second}.AppImage"
    url "https://download.gimp.org/gimp/v#{version.major_minor}/linux/#{filename}"

    livecheck do
      url "https://www.gimp.org/gimp_versions.json"
      strategy :json do |json|
        json["STABLE"]&.map do |release|
          release["appimage"]&.map do |build|
            next unless build["filename"]&.match?(/#{arch}/i)
            next release["version"] unless build["revision"]

            "#{release["version"]},#{build["revision"]}"
          end
        end&.flatten
      end
    end

    app_image filename, target: "GIMP.AppImage"

    zap trash: "~/.config/GIMP/#{version.major_minor}"
  end

  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  conflicts_with cask: "gimp@dev"
end
