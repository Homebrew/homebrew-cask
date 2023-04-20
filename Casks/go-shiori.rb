cask "go-shiori" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.5.4"
  sha256 arm:   "6563b360479d4a184d364f4677b8504752f5a0452774917d1806b6e681b6161a",
         intel: "28871878ac6a24e68458453711caa386c181fe55c22af247448b42ab73816592"

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
