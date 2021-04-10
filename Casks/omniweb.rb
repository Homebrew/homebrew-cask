cask "omniweb" do
  version "5.11.2"
  sha256 "f1179f1dcf96ed7b2732a18049c79c4043131b267deabb06b5a10c19f1ce750f"

  url "https://downloads.omnigroup.com/software/MacOSX/10.4/OmniWeb-#{version}.dmg"
  name "OmniWeb"
  homepage "https://www.omnigroup.com/more/"

  livecheck do
    url "https://update.omnigroup.com/appcast/com.omnigroup.OmniWeb#{version.major}"
    strategy :page_match
    regex(%r{href=.*?/OmniWeb-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "OmniWeb.app"
end
