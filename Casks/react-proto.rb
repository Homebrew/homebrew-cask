cask "react-proto" do
  version "1.0.0"
  sha256 "2b2f451865fbb2d03e00109c8f452774e881117c2d21d2d1ad543c9ab55df213"

  # github.com/React-Proto/react-proto/ was verified as official when first introduced to the cask
  url "https://github.com/React-Proto/react-proto/releases/download/v#{version}/React-Proto-#{version}.dmg"
  appcast "https://github.com/React-Proto/react-proto/releases.atom"
  name "React Proto"
  desc "React application prototyping tool for developers and designers"
  homepage "https://react-proto.github.io/react-proto"

  app "React-Proto.app"

  zap trash: [
    "~/Library/Application Support/react-proto",
    "~/Library/Preferences/com.react.proto*.plist",
  ]
end
