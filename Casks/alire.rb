cask "alire" do
  version "1.1.1"
  sha256 "621a28b0cba4cd86efd42a7b10308515b5fbb8103e489c8876f96bcf4f715282"

  url "https://github.com/alire-project/alire/releases/download/v#{version}/alr-#{version}-bin-x86_64-macos.zip",
      verified: "github.com/alire-project/alire/"
  name "alire"
  desc "Ada Libraries REspository. Use alr to get, build, and incorporate Ada libraries"
  homepage "https://alire.ada.dev/"

  depends_on arch: :intel

  installer script: {
    executable: "bin/alr",
    args:       ["index", "-q", "--reset-community"],
  }
  binary "bin/alr"

  uninstall trash: "~/.config/alire/indexes/community/"
end
