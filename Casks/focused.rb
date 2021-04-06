cask "focused" do
  version "3.2,1825:1544822315"
  sha256 "e9da7b084243c73f78d2a441f1414b1e6d3a2b31c0391b8e9ae3631efa834f03"

  url "https://dl.devmate.com/com.71squared.focused/#{version.after_comma.before_colon}/#{version.after_colon}/Focused-#{version.after_comma.before_colon}.zip",
      verified: "devmate.com/com.71squared.focused/"
  name "Focused"
  homepage "https://codebots.co.uk/"

  livecheck do
    url "https://updates.devmate.com/com.71squared.focused.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/Focused-\d+\.zip}i, 1]}"
    end
  end

  app "Focused.app"
end
