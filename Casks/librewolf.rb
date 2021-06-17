cask "librewolf" do
  version "89.0.1-1"

  if Hardware::CPU.intel?
    sha256 "a9695cc5be846e7e9fb023b680a9273d84f3b079475a1277219c1aed374f1f05"
    url "https://gitlab.com/librewolf-community/browser/macos/uploads/49443567873da35b2a6523fef6e214a5/librewolf-#{version}.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos"
  else
    sha256 "afa80fe07f1244e79a870de5d13e3783e1763e23f7e7e535f0e172e1cf84893f"
    url "https://gitlab.com//librewolf-community/browser/macos/uploads/d85200e90e304685067e840e6a8cb9d6/librewolf-#{version}_aarch64_exp.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos"
  end

  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf-community.gitlab.io/"

  app "LibreWolf.app"

  zap trash: [
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
    "~/.librewolf",
  ]
end
