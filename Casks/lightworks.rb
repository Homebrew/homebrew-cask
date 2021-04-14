cask "lightworks" do
  version "2021.1,126716"
  sha256 "cde6525e031e84a241f3721284fc64b1f6425b17360395127717f7640271e4b6"

  url "https://cdn.lwks.com/releases/#{version.before_comma}/lightworks_#{version.before_comma}_r#{version.after_comma}.dmg"
  name "Lightworks"
  desc "Complete video creation package"
  homepage "https://www.lwks.com/"

  livecheck do
    url "https://www.lwks.com/index.php?option=com_docman&task=doc_download&gid=210"
    strategy :header_match do |headers|
      match = headers["location"].match(/lightworks_(\d+(?:\.\d+)*)_r(\d+)\.dmg/i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"
end
