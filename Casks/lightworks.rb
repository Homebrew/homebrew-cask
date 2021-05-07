cask "lightworks" do
  version "2021.2.1,128456"
  sha256 "cb772b20bbbdc1234c2d1bcfc499dff61b19f5c7169099c1bb8f0834b19c353b"

  url "https://cdn.lwks.com/releases/#{version.before_comma}/lightworks_#{version.before_comma.major_minor}_r#{version.after_comma}.dmg"
  name "Lightworks"
  desc "Complete video creation package"
  homepage "https://www.lwks.com/"

  livecheck do
    url "https://www.lwks.com/index.php?option=com_docman&task=doc_download&gid=210"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)*)/lightworks_\d+(?:\.\d+)*_r(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"
end
