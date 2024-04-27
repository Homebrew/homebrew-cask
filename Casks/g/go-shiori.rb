cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.3"
  sha256 arm:   "1443f81be6d3524c66c7e52eaa944e54d196821edef573b9ee051bdf1ccc83bd",
         intel: "6e8938a18aec3620c8301de88d7bb3e35ce0e60ab8aa94a83bc1637c1851d13d"

  url "https://github.com/go-shiori/shiori/releases/download/v#{version}/shiori_Darwin_#{arch}.tar.gz"
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
