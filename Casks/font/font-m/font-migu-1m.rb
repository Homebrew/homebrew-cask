cask "font-migu-1m" do
  version "20150712"
  sha256 "d4c38664dd57bc5927abe8f4fbea8f06a8ece3fea49ea02354d4e03ac6d15006"

  url "https://osdn.dl.osdn.jp/mix-mplus-ipa/63545/migu-1m-#{version}.zip"
  name "Migu 1M"
  homepage "https://mix-mplus-ipa.osdn.jp/migu/#migu1m"

  font "migu-1m-#{version}/migu-1m-bold.ttf"
  font "migu-1m-#{version}/migu-1m-regular.ttf"

  # No zap stanza required
end
