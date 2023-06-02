cask "amazon-workdocs" do
  version "1.2.200445.0,20"
  sha256 "b2f5f93c69180aaac60ab1737669cec054f5d117ae5e373f8e4bb342cd1a887e"

  url "https://d28gdqadgmua23.cloudfront.net/mac/version/#{version.csv.first}/#{version.csv.second}/Amazon%20WorkDocs.app.zip",
      verified: "d28gdqadgmua23.cloudfront.net/"
  name "Amazon WorkDocs"
  desc "Fully managed, secure content creation, storage, and collaboration service"
  homepage "https://aws.amazon.com/workdocs/"

  livecheck do
    url "https://d28gdqadgmua23.cloudfront.net/mac/appcast/appcast-workdocs-prod.xml"
    regex(%r{/(\d+(?:\.\d+)+)/(\d+)/Amazon WorkDocs\.app\.zip}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Amazon WorkDocs.app"
end
