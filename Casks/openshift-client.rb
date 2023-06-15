cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.3"
  sha256 arm:   "7e1e79ff02cb16144704c22c2b667d8983d1ba24ce4362c2cf126ed626d27c30",
         intel: "ac438a3a73a3c4654d6c383a46655e498a30af9e8f24f2153164752835c13247"

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
