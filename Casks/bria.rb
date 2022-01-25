cask "bria" do
  version "6.5.1,108815"
  sha256 "84c1a1cea97ce406fdb7d5b6ce0fc98c76d69a5ed4f707fa08f15b7306d5fcf5"

  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "counterpath.s3.amazonaws.com/"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  livecheck do
    url "https://www.counterpath.com/Bria#{version.major}forMac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Bria[._-]v?(\d+(?:\.\d+)+)[_-](\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Bria.app"
end
