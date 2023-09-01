cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.11"
  sha256 arm:   "0eda96d56fe6ffb4c95b917ee9235f97a4e1b08899881dd61a673b7d990b4075",
         intel: "29d28686da2a1164b7deed7f18ac8f0cf5a94affbf468d102465b5e68a791698"

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
