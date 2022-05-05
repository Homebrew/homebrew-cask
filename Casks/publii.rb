cask "publii" do
  arch = Hardware::CPU.intel? ? "intel" : "apple-silicon"
  version "0.39.1"

  if Hardware::CPU.intel?
    sha256 "bdc5d16f66a2004d6f4403081283be13e15ad385ee4b8b9140baefc60a1f4341"
  else
    sha256 "4a4210079eaa2e4f1bc1575defde02609fa2993c7f37d6cd44367e2a91531939"
  end

  url "https://cdn.getpublii.com/Publii-#{version}-#{arch}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://github.com/GetPublii/Publii/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v\.?(\d+(?:\.\d+)+).zip}i)
      next if match.blank?

      match[1].to_s
    end
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
