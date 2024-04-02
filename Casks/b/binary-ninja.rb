cask "binary-ninja" do
  version "4.0.4958"
  sha256 :no_check

  url "https://cdn.binary.ninja/installers/binaryninja_free_macosx.dmg"
  name "Binary Ninja"
  desc "Reverse engineering platform"
  homepage "https://binary.ninja/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+)/)
    strategy :extract_plist do |items|
      puts items["com.vector35.binaryninja"].short_version
      items["com.vector35.binaryninja"].short_version[regex, 1]
    end
  end

  app "Binary Ninja.app"

  zap trash: "~/Library/Application Support/Binary Ninja"
end
