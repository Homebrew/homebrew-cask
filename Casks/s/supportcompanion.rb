cask "supportcompanion" do
  version "2.3.1.81039"
  sha256 "596e5adad68b823bfe740bdeeb72be1e213e3207c40108c4b8bda49c93301a69"

  url "https://github.com/macadmins/SupportCompanion/releases/download/v#{version}/SupportCompanion-#{version}.pkg"
  name "Support Companion"
  desc "Provides utility and support tools"
  homepage "https://github.com/macadmins/SupportCompanion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  pkg "SupportCompanion-#{version}.pkg"

  uninstall script: {
    executable: "/Applications/SupportCompanion.app/Contents/Resources/Uninstall.zsh",
    sudo:       true,
  }

  zap trash: [
    "/Library/Application Support/SupportCompanion",
    "~/Library/Application Support/SupportCompanion",
    "~/Library/Preferences/com.github.macadmins.SupportCompanion.plist",
  ]
end
