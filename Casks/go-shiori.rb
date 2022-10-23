cask "go-shiori" do
  arch arm: "Darwin_aarch64", intel: "Darwin_x86_64"

  version "1.5.3"
  sha256 arm:   "15ffbfee5afe467b4cbd2b0a05a07a9bfceb1a26fc9ad62e1684746c2ca221a4",
         intel: "0f54fc8af09c7228c2221f04432ed1c53414df9f9c9e613cf2a3219e9047b3f1"

  url "https://github.com/go-shiori/shiori/releases/download/v#{version}/shiori_#{version}_#{arch}.tar.gz"
  name "Shiori"
  desc "Shiori is a simple bookmarks manager written in the Go language"
  homepage "https://github.com/go-shiori/shiori"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "shiori"

  zap trash: "~/Library/ApplicationSupport/shiori"

  def caveats
    <<~EOS

      If this is a fresh install or you're upgrading versions, you'll need to migrate the database to apply any required changes for Shiori to work properly:
        shiori migrate

      To access web interface:
        shiori serve

      Shiori is designed to work out of the box, but you can change where it stores your bookmarks if you need to.

      For more details, read:
        https://github.com/go-shiori/shiori/blob/master/docs/Configuration.md

    EOS
  end
end
