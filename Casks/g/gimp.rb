cask "gimp" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macos", linux: "linux"
  livecheck_os = on_system_conditional macos: "macos", linux: "appimage"
  name_start = on_system_conditional macos: "gimp", linux: "GIMP"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.2.8"
  sha256 arm:          "06404a375106b7613ba3a14c7d8d9a7cbe18b9b9e2b2050bb72f3162cbcfc395",
         intel:        "7746487985d7143b190692500b58d5317b6ce916a60f8139a76df5eea1e920db",
         arm64_linux:  "3fd61dbc40b760f7806ffc04c29dc0d93021b799b9d0e6977571c4425d0323b0",
         x86_64_linux: "8b43dc23e58a1b66ace9dd6d4d5f7e8532f3398e6109f95a1ec0b6ad036aa250"

  on_macos do
    app "GIMP.app"
    command_wrapper "gimp", executable: "#{appdir}/GIMP.app/Contents/MacOS/gimp"

    zap trash: [
      "~/Library/Application Support/Gimp",
      "~/Library/Caches/GIMP",
      "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}.plist",
      "~/Library/Preferences/org.gimp.gimp.plist",
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
