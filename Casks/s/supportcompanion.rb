cask "supportcompanion" do
  version "2.3.0.81036"
  sha256 "1836386ca5756cfa789dc1130b9bb06ebb08392ffd7536526eaea988cd3ff409"

  url "https://github.com/macadmins/SupportCompanion/releases/download/v#{version}/SupportCompanion-#{version}.pkg"
  name "Support Companion"
  desc "Helper application designed to empower end-users"
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
