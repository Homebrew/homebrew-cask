cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.6.2"
  sha256 arm:   "2932f36954c0977a557d0d60c09604a543166c8f4ae9e9f897fd1d23fa662326",
         intel: "d0acaefd09231427d436b77ae9a8be2008c909989d9199c649c1159f91026567"

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
