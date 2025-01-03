cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.4"
  sha256 arm:   "e308f419527bdb9e929637e1d094e9104b7e32e9cda45e5c5d2d160899e2ab62",
         intel: "8ba8895de3a0139b13047c909718489dc9ac2a00fcaf656f1573e016da4292e9"

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
