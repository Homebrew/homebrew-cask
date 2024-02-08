cask "scilab" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2024.0.0"
    sha256 "66c760501aabf592f2cbf03156767c5faa4ab085d2bc391410d8a99c0d67cfa5"
  end
  on_intel do
    version "2024.0.0"
    sha256 "3077f06d0f8b0a2d49ae0880ad12f50da2c12e6c5f4430b33af1b09288f714bc"
  end

  url "https://www.utc.fr/~mottelet/scilab/download/#{version}/scilab-#{version}-#{arch}.dmg",
      verified: "utc.fr/~mottelet/scilab/"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.utc.fr/~mottelet/scilab_for_macOS.html"
    regex(/href=.*?scilab[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  zap trash: "~/.Scilab"

  caveats do
    depends_on_java "8"
  end
end
