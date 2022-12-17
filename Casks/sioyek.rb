cask "sioyek" do
  version "1.5.0"
  sha256 "07ea7a1b42a5a3f83fe08c3d6107fab62444675b067d02f1a34ad24697a320a7"

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
