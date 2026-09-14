cask "font-goorm-sans-code" do
  version "1.0.1"
  sha256 "ddf93e59558509f2b62959fb553461b0b03cd00a186e61d21f410428c5ee76ba"

  url "https://statics.goorm.io/fonts/GoormSansCode/v#{version}/goorm-sans-code-#{version}.zip"
  name "goorm Sans Code"
  homepage "https://goorm-sans.goorm.io/"

  livecheck do
    url :homepage
    regex(/href=.*?goorm[._-]sans[._-]code[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "goorm sans code 2/Public/goorm_Sans_Code_400.ttf"

  # No zap stanza required
end
