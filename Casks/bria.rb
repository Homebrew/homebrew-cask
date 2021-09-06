cask "bria" do
  version "6.4.2,107895"
  sha256 "d9208cbc89077d757830b5ad34b9a5d2e710fbcb925f365a031bd735e52dba8e"

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
