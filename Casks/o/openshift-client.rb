cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.19"
  sha256 arm:   "2f96d6528782b61fcffd1f32a3205094bae32b45f29b135c3095752c174fee13",
         intel: "64155c272858b5934c7bbc42139dacc2e487b93be433d42de95ada64dc6abca7"

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
