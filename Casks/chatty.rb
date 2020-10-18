cask "chatty" do
  version "0.13"
  sha256 "c68009fbc946e9e85c7c3099cb031737a6e996d913c41c76e5a328f83eea406f"

  # github.com/chatty/chatty/ was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
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
