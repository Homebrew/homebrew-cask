cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "5c4acf285902ce96eb35f2b20877fde9692c26ebf47c1b7719faf19864362a63",
         intel: "d0a8f9fa2e3cc732fd1a21de661be62d3cd8ebbed74f4419153cf0e9f269be23"

  url "https://github.com/go-shiori/shiori/releases/download/v#{version}/shiori_Darwin_#{arch}_#{version}.tar.gz"
  name "Shiori"
  desc "Shiori is a simple bookmarks manager written in the Go language"
  homepage "https://github.com/go-shiori/shiori"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "shiori"

  zap trash: "~/Library/ApplicationSupport/shiori"

  caveats do
    <<~EOS

      If this is a fresh install or you're upgrading versions, you'll need to migrate the database to apply any required changes for Shiori to work properly:
        shiori migrate

    EOS
  end
end
