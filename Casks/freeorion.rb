cask "freeorion" do
  version "0.4.10.1,2020-09-25:39cfe10"
  sha256 "ca31a2a35878df0059589cf88f50cd1168d5f493b8ccbcaece88ae3a2e5331a7"

  url "https://github.com/freeorion/freeorion/releases/download/v#{version.before_comma}/FreeOrion_v#{version.before_comma}_#{version.after_comma.before_colon}.#{version.after_colon}_MacOSX_10.9.dmg",
      verified: "github.com/freeorion/"
  name "FreeOrion"
  homepage "https://freeorion.org/"

  livecheck do
    url "https://github.com/freeorion/freeorion/releases/latest"
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/FreeOrion_v(\d+(?:\.\d+)*)_(\d+(?:-\d+)*)\.([0-9a-f]+)_MacOSX_(?:\d+(?:\.\d+)*)\.dmg}i,
      )
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  app "FreeOrion.app"
end
