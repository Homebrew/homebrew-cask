cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.3"
  sha256 arm:   "15ffbfee5afe467b4cbd2b0a05a07a9bfceb1a26fc9ad62e1684746c2ca221a4",
         intel: "0f54fc8af09c7228c2221f04432ed1c53414df9f9c9e613cf2a3219e9047b3f1"

  url "https://github.com/go-shiori/shiori/releases/download/v#{version}/shiori_#{version}_Darwin_#{arch}.tar.gz"
  name "Shiori"
  desc "Shiori is a simple bookmarks manager written in the Go language"
  homepage "https://github.com/go-shiori/shiori"

  binary "shiori"

  zap trash: "~/Library/ApplicationSupport/shiori"

  caveats do
    <<~EOS

      If this is a fresh install or you're upgrading versions, you'll need to migrate the database to apply any required changes for Shiori to work properly:
        shiori migrate

    EOS
  end
end
