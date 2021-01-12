cask "chatty" do
  version "0.14-b2"
  sha256 "163737cf33b0777afc92f0ff0e6cf1829cfbae46ccdfc29fd8e23be6a7d0c75a"

  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip",
      verified: "github.com/chatty/chatty/"
  appcast "https://github.com/chatty/chatty/releases.atom"
  name "Chatty"
  homepage "https://chatty.github.io/"

  suite "Chatty"

  preflight do
    # There is no sub-folder in the ZIP; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("Chatty").tap(&:mkpath))
  end

  zap trash: "~/.chatty"

  caveats do
    depends_on_java "7+"
  end
end
