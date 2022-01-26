cask "bria" do
  version "6.5.2,109387"
  sha256 "0cf8ae8f637c59b0820f6ccc192d48fcf833af1ef90379850af84f834061dc8b"

  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "counterpath.s3.amazonaws.com/"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  livecheck do
    url "https://www.counterpath.com/Bria#{version.major}forMac"
    strategy :header_match do |headers|
      match = headers["location"].match(/Bria[._-]v?(\d+(?:\.\d+)+)[_-](\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Bria.app"
end
