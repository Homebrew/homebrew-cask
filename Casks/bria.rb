cask "bria" do
  version "6.4.1,107305"
  sha256 "eb5ba8268b6b63e424ef197fdf59635a1f7a00ac860448481eeae2fac70b311c"

  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version.before_comma}_#{version.after_comma}.dmg",
      verified: "counterpath.s3.amazonaws.com/"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  livecheck do
    url "https://www.counterpath.com/Bria#{version.major}forMac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/Bria[._-]v?(\d+(?:\.\d+)+)[_-](\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Bria.app"
end
