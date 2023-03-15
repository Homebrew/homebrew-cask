cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.7"
  sha256 arm:   "46b049a336c571379e5a9ecff4d8c354f7a443b394bede75e328700d8d56e03e",
         intel: "87c3b2613896e15683a5afc67636af3766c917c367eb01913b34261cb7cd702d"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
