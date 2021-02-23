cask "onionshare" do
  version "2.3.1"
  sha256 "5de2cb81c87a13bc27cd71061c8c1a1f5dde25efe3e1f6b4ddb02ca0a343323f"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.dmg"
  name "OnionShare"
  desc "Securely and anonymously share files, host websites, and chat with friends"
  homepage "https://onionshare.org/"

  livecheck do
    url "https://onionshare.org/latest-version.txt"
    strategy :page_match do |page|
      match = page.match(/(.*)/i)
      (match[1]).to_s
    end
  end

  app "OnionShare.app"
end
