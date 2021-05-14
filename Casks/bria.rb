cask "bria" do
  version "6.4.0,106813"
  sha256 "c55cc742e0e227a75323e5f6e7f4b27c6b6b9a39e4a8a4a2d182fc593724c5d9"

  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version.before_comma}_#{version.after_comma}.dmg",
      verified: "counterpath.s3.amazonaws.com/"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  livecheck do
    url "https://www.counterpath.com/Bria6forMac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Bria_(\d+(?:\.\d+)*)_(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Bria.app"
end
