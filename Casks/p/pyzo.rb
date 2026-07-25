cask "pyzo" do
  arch arm: "arm64", intel: "x86_64"

  version "4.22.0"
  sha256 arm:   "a71fca9dc8bbc42ced3b3de324f03096eb4dd9f140a20c35c2f9b83bb3c249ea",
         intel: "39f99176d42c70f87961585f5718483c972e7310a08ca3b525400dbd02ded20f"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_#{arch}.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  depends_on macos: :big_sur

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
