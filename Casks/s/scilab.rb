cask "scilab" do
  arch arm: "arm64", intel: "x86_64"
  branch = on_arch_conditional arm: "branch-"

  on_arm do
    version "2024.0"
    sha256 "1673e3b6bce5ce571d72921689f1e530f37b584ff027b007b112e9eed200cc27"
  end
  on_intel do
    version "2023.1.0"
    sha256 "cc6a81be2b18c67819b317ba2daf7aa56a65d6ada34aa4bb0f9e63348b0f6822"
  end

  url "https://www.utc.fr/~mottelet/scilab/download/#{branch}#{version}/scilab-#{branch}#{version}-#{arch}.dmg",
      verified: "utc.fr/~mottelet/scilab/"
  name "Scilab"
  desc "Software for numerical computation"
  homepage "https://www.scilab.org/"

  livecheck do
    url "https://www.utc.fr/~mottelet/scilab_for_macOS.html"
    regex(/href=.*?scilab[._-]#{branch}v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "scilab-#{version}.app"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab"
  binary "#{appdir}/scilab-#{version}.app/Contents/bin/scilab-cli"

  caveats do
    depends_on_java "8"
  end
end
