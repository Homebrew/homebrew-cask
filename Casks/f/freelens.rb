cask "freelens" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.0"
  sha256 arm:          "58412b6db367c4e7f081b1ee14b84cecf0d9ed00cb5853fe7abcf40ea06203b5",
         intel:        "e3f5b6e5586d5645de153d5dbd62c477fd5269f28c44199120fbb4ee14f472dc",
         arm64_linux:  "d49142c20ffe7b4d381ba7eb4d42e1f1a0ae615ce435720f41b4b8309c9ba2bc",
         x86_64_linux: "372a019765170ad420b0224d653d488ebebc41faa972052fa3df1337c2cb11d1"

  on_macos do
    depends_on macos: :monterey

    app "Freelens.app"

    zap trash: [
      "~/Library/Application Support/Freelens",
      "~/Library/Logs/Freelens",
    ]
  end
  on_linux do
    app_image "Freelens-#{version}-linux-#{arch}.AppImage", target: "Freelens.AppImage"

    zap trash: "~/.config/Freelens"
  end

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-#{os}-#{arch}.#{url_end}"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
end
