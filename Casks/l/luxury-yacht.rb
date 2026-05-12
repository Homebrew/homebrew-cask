cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.5"
  sha256 arm:   "c6713ff77599d1b9e2dd553d0fd2b8612287f113e4799f1635b21efdcee7e44d",
         intel: "ad3d7a03c96cf81de9930e4079f620e89a97b4974226792a9f760783e6b915ef"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
