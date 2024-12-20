cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.10"
  sha256 arm:   "f6a954d5bbaabe223574603732851ffe7884bc48d0eff5fdf2c14812075d4da9",
         intel: "dbd4da513aa3ce4ca4a5e1d9cc90c9687aefb2e6e68699434b4db73b529088c9"

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
