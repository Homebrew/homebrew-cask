cask "selfcontrol" do
  version "4.0.1"
  sha256 "fbefdca70944bb2578d06ee449195b0e7d0de0026f4f670701e8632b299c833f"

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  name "SelfControl"
  desc "Block your own access to distracting websites"
  homepage "https://selfcontrolapp.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SelfControl[._-](\d+(?:\.\d+)*)\.zip}i)
  end

  auto_updates true

  app "SelfControl.app"

  zap trash: "~/Library/Preferences/org.eyebeam.SelfControl.plist"
end
