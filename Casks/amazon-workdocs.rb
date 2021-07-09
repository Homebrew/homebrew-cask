cask "amazon-workdocs" do
  version "1.2.200340.0,99"
  sha256 "3864f95771d3a272a2e95577062d52b2f717b56d77710bc0ce77c6a50bc7f7b2"

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
