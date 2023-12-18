cask "lab" do
  version "0.0.74,untagged-f2f7de6625ed43865c06"
  sha256 "c8073ba00c5fcc2bf724b02d257c0684a958df3a330465bef31e3f3c2122d7de"

  url "https://github.com/c8r/lab/releases/download/#{version.csv.second}/Lab-#{version.csv.first}-mac.zip"
  name "Lab"
  desc "React UI component design tool"
  homepage "https://github.com/c8r/lab/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Lab.app"
end
