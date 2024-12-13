cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.9"
  sha256 arm:   "cfb922a2436cbf3a487b31e238c0b5639f3d65b9a2f32268c9358307d1f77127",
         intel: "66340e546e11b01dcf62f0d4741f1ab0345eff6242857c998e821ba9cffc854d"

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
