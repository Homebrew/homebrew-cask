cask "leader-key" do
  version "1.7.0,66"
  sha256 "18db81ac1d8b2789a4342c4548b65884d48b83699654837701c7863e7198a30d"

  url "https://leader-key-updates.s3.amazonaws.com/Leader%20Key.b#{version.csv.second}.zip",
      verified: "leader-key-updates.s3.amazonaws.com/"
  name "Leader Key"
  desc "Application launcher"
  homepage "https://github.com/mikker/LeaderKey.app"

  livecheck do
    url "https://leader-key-updates.s3.amazonaws.com/appcast.xml"
    regex(%r{/Leader%20Key[._-]b(\d+(?:\.\d+)*)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Leader Key.app"

  zap trash: "~/Library/Application Support/Leader Key"
end
