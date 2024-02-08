cask "sioyek" do
  version "2.0.0"
  sha256 "0f81831d4fa0d57e7e7e56a40ab6fa6488950b7d6a944aa29918be42cfc46b8a"

  url "https://github.com/ahrm/sioyek/releases/download/v#{version}/sioyek-release-mac.zip",
      verified: "github.com/ahrm/sioyek/"
  name "Sioyek"
  desc "PDF viewer designed for reading research papers and technical books"
  homepage "https://sioyek.info/"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "build/sioyek.dmg"

  app "sioyek.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/sioyek.wrapper.sh"
  binary shimscript, target: "sioyek"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/sioyek.app/Contents/MacOS/sioyek' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/sioyek",
    "~/Library/Saved Application State/com.yourcompany.sioyek.savedState",
  ]
end
