cask "amazon-workdocs" do
  version "1.2.200287.0,98"
  sha256 "a60fa8eaf7260b76a1fdcc3f2a09fe2541beb4903e2f057e9998c15f725aa829"

  url "https://d28gdqadgmua23.cloudfront.net/mac/version/#{version.before_comma}/#{version.after_comma}/Amazon%20WorkDocs.app.zip",
      verified: "d28gdqadgmua23.cloudfront.net/"
  name "Amazon WorkDocs"
  homepage "https://aws.amazon.com/workdocs/"

  livecheck do
    url "https://d28gdqadgmua23.cloudfront.net/mac/appcast/appcast-workdocs-prod.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/(\d+(?:\.\d+)*)/(\d+)/Amazon WorkDocs\.app\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Amazon WorkDocs.app"
end
