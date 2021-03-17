cask "bria" do
  version "6.3.0,105536"
  sha256 "ad71abb778fc6d3e591755f3632fcf84fb27bb9ab6ac6f5847a4167cbbf1d65d"

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
