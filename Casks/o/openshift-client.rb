cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.17"
  sha256 arm:   "7161cc5955a3587f4cad10cd620a5394d2614703de0b9e68d71092db7afc7fda",
         intel: "64c338934aa0585d331de3fd469e2a2d04fb24e50c5d07f0beeb3a2d37f1da51"

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
