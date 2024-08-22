cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.9"
  sha256 arm:   "0c873c080542a3b12037fe266df65eb30de7d87993cb318f52d4e7275c825dcc",
         intel: "d775a3165c61ea0986d75131a9dc5d644ee261805e79d55f9eadc736b8edd5bb"

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
