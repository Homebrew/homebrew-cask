cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.17"
  sha256 arm:   "5db1b804b508cd352abfab8f6651ea8c05227b9469315f7b430106326ad969cd",
         intel: "db609ed10cf3bb420709059536d5c08c35ebc67bcf7d5f1fbe8b5dde15e65f45"

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
