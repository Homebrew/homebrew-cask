cask "mkvtoolnix" do
  version "50.0.0.1"
  sha256 "7118e7f17f9ef49fe471d860b938362f6d575e75d4bc61a1fa41cb9880bb11e6"

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  appcast "https://mkvtoolnix.download/macos/"
  name "MKVToolNix"
  desc "Set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  depends_on macos: ">= :mojave"

  app "MKVToolNix-#{version.major_minor_patch}.app"

  caveats do
    <<~EOS
      If you require the MKVToolNix command-line tools:

        brew install mkvtoolnix
    EOS
  end
end
