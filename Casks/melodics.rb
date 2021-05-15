cask "melodics" do
  version "2.1.6079,A2A93732-8BA6-41EC-87BA-1C345A1C022B"
  sha256 "6c9c3579742c271a7aeee3864fcd04cfd29f9ae18648fdf56bf2a426cb1ed562"

  url "https://web-cdn.melodics.com/download/#{version.after_comma}.zip"
  name "Melodics"
  desc "Helps you learn to play your instrument"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/(\h+(?:-\h+)+)\.zip}i, 1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Melodics.app"
end
