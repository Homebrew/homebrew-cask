cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.7"
  sha256 arm:   "3daaf93b5b321c5c09e9bed2a093c1a9eb34617434082c369a68b262671d6336",
         intel: "465df2a560a0b393fe5dfb8e399ee70cc3f562f7e94741c756106f8230f73805"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
