cask "tagger" do
  version "1.8.0.7"
  sha256 "a4745dcf88f1691d2c681a87e6cfb6326200b6a2d9dfb53c2c62c67905a09e16"

  url "https://github.com/Bilalh/Tagger/releases/download/#{version.major_minor_patch}/Tagger_#{version}.zip",
      verified: "github.com/Bilalh/Tagger/"
  name "Tagger"
  desc "Music metadata editor supporting batch edits and importing VGMdb data"
  homepage "https://bilalh.github.io/projects/tagger/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Tagger.app"
end
