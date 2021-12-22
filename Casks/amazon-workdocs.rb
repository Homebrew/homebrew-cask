cask "amazon-workdocs" do
  version "1.2.200427.0,6"
  sha256 "6c38c9ecccf416afa81d1b19d6a5d549d205af7ae1af449e974c044c25c05c1a"

  url "https://d28gdqadgmua23.cloudfront.net/mac/version/#{version.csv.first}/#{version.csv.second}/Amazon%20WorkDocs.app.zip",
      verified: "d28gdqadgmua23.cloudfront.net/"
  name "Amazon WorkDocs"
  desc "Fully managed, secure content creation, storage, and collaboration service"
  homepage "https://aws.amazon.com/workdocs/"

  livecheck do
    url "https://d28gdqadgmua23.cloudfront.net/mac/appcast/appcast-workdocs-prod.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/(\d+(?:\.\d+)+)/(\d+)/Amazon WorkDocs\.app\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Amazon WorkDocs.app"
end
