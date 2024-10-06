cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.1"
  sha256 arm:   "299ca98734c59d59b6cf12c9e05b7743a8b237f8049e90695433497c40386334",
         intel: "4a5b29f2800fca511d402a5444867af9a483d19bdea25c6eb3c3c5e46e6eb4dc"

  url "https://github.com/go-shiori/shiori/releases/download/v#{version}/shiori_Darwin_#{arch}_#{version}.tar.gz"
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
