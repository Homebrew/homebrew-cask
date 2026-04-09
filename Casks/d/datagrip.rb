cask "datagrip" do
  arch arm: "-aarch64"

  version "2026.1.2,261.23567.23"
  sha256 arm:   "acc89512691b24821e05f397a4f55714114b9a45ba4cb9f3b0f0a17905acce17",
         intel: "09d855c6373bc1bbd3480fd1537f5b9de93a914dff1bccfd4e3dae11a76c64a0"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases and SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :json do |json|
      json["DG"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true

  app "DataGrip.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/datagrip.wrapper.sh"
  binary shimscript, target: "datagrip"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/DataGrip.app/Contents/MacOS/datagrip' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
