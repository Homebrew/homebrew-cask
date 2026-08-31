cask "gimp@dev" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macos", linux: "linux"
  livecheck_os = on_system_conditional macos: "macos", linux: "appimage"
  name_start = on_system_conditional macos: "gimp", linux: "GIMP"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.2.0-RC3"
  sha256 arm:          "93baffa8e41517b2cb6902176a851a7a473f2957aa3eadfcc38b9dd361fa6601",
         intel:        "3b69163e475f8aee71565f2df8dbc35fde730f18ff6b9fde98b726ff41f2ab32",
         arm64_linux:  "59a97a7a46df7f77a076d4f2b431949f2667be79bb6094babfb7f8bcd86ff7fc",
         x86_64_linux: "3712a67061474c363e0c2ed8f5d26398e2d708cdf6b0778368a514c9d134d88d"

  on_macos do
    depends_on macos: :big_sur

    app "GIMP.app"
    command_wrapper "gimp", executable: "#{appdir}/GIMP.app/Contents/MacOS/gimp"

    zap trash: [
      "~/Library/Application Support/Gimp",
      "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}.plist",
      "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}.savedState",
    ]
  end
  on_linux do
    app_image "GIMP-#{version.csv.first}-#{arch}#{"-#{version.csv.second}" if version.csv.second}.AppImage",
              target: "GIMP.AppImage"

    zap trash: "~/.config/GIMP/#{version.major_minor}"
  end

  url "https://download.gimp.org/gimp/v#{version.major_minor}/#{os}/#{name_start}-#{version.csv.first}-#{arch}#{"-#{version.csv.second}" if version.csv.second}.#{url_end}"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/gimp_versions.json"
    strategy :json do |json|
      json["DEVELOPMENT"]&.map do |release|
        release[livecheck_os]&.map do |build|
          next unless build["filename"]&.match?(/#{arch}/i)
          next release["version"] unless build["revision"]

          "#{release["version"]},#{build["revision"]}"
        end
      end&.flatten
    end
  end

  conflicts_with cask: "gimp"
end
