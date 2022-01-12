cask "lab" do
  version "0.0.74,untagged-f2f7de6625ed43865c06"
  sha256 "c8073ba00c5fcc2bf724b02d257c0684a958df3a330465bef31e3f3c2122d7de"

  url "https://github.com/c8r/lab/releases/download/#{version.csv.second}/Lab-#{version.csv.first}-mac.zip"
  name "Lab"
  desc "React UI component design tool"
  homepage "https://github.com/c8r/lab/"

  livecheck do
    url "https://github.com/c8r/lab/releases/"
    regex(%r{download/(.*)/Lab[._-]?(\d+(?:\.\d+)*)[._-]?mac\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Lab.app"
end
