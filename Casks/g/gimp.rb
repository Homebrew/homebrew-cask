cask "gimp" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macos", linux: "linux"
  livecheck_os = on_system_conditional macos: "macos", linux: "appimage"
  name_start = on_system_conditional macos: "gimp", linux: "GIMP"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.2.6"
  sha256 arm:          "854573aec2be6a185aa021109c3c0ca94f210379204b704231bdd191b4060294",
         intel:        "ebe633642445d4d6fc6b68e7be7ca581c0b28c18dc9de7747849528c982e5677",
         arm64_linux:  "d1b8271e440dc4e36065ca25f219c0534abd2dfb43aeb033c76b16832d395e19",
         x86_64_linux: "79ea41bc9b06f78fda181849a9ca8e42d83f1124dedb756f4d52352e2465010f"

  on_macos do
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
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/gimp_versions.json"
    strategy :json do |json|
      json["STABLE"]&.map do |release|
        release[livecheck_os]&.map do |build|
          next unless build["filename"]&.match?(/#{arch}/i)
          next release["version"] unless build["revision"]

          "#{release["version"]},#{build["revision"]}"
        end
      end&.flatten
    end
  end

  conflicts_with cask: "gimp@dev"
end
