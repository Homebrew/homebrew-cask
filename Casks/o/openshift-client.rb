cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.1"
  sha256 arm:   "378d3064db5f466761418c87c0835cb579a7e51c880451366860a89a61490cfd",
         intel: "74add0e4070fc2e2e3ada696118464781376ccbc843862b9dffa8ba089827251"

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
